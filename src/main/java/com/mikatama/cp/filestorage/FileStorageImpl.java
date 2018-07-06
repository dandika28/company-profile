package com.mikatama.cp.filestorage;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Stream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileStorageImpl implements FileStorage{
	
	Logger log = LoggerFactory.getLogger(this.getClass().getName());
	//private final Path rootLocation = Paths.get(path);
	
	@Override
	public void store(MultipartFile file,String pathLocation){
		Path path = Paths.get(pathLocation);
		try {
			Files.copy(file.getInputStream(), path.resolve(file.getOriginalFilename()));
		} catch (Exception e) {
			throw new RuntimeException("FAIL! -> message = " + e.getMessage());
		}
	}
	
	@Override
	public Resource loadFile(String filename, String pathLocation){
		Path path = Paths.get(pathLocation);
		log.info("filename: "+filename);
		try {
			Path file = path.resolve(filename);
			Resource resource = new UrlResource(file.toUri());
			if(resource.exists() || resource.isReadable()){
				return resource;
			}else{
				throw new RuntimeException("FAIL!");
			}
		} catch (MalformedURLException e) {
			throw new RuntimeException("Error! -> message = " + e.getMessage());
		}
	}
	
	@Override
	public void deleteAll(String pathLocation){
		Path path = Paths.get(pathLocation);
		FileSystemUtils.deleteRecursively(path.toFile());
	}
	
	@Override
	public void init(String pathLocation) {
		Path path = Paths.get(pathLocation);
		try {
			Files.createDirectories(path);
		} catch (IOException e) {
			throw new RuntimeException("Could not initialize storage!");
		}
	}
	
	@Override
	public Stream<Path> loadFiles(String pathLocation){
		Path path2 = Paths.get(pathLocation);
		try {
			return Files.walk(path2, 1).filter(path -> !path.equals(path2))
					.map(path2::relativize);
		} catch (IOException e) {
			throw new RuntimeException("\"Failed to read stored file");
		}
	}
}
