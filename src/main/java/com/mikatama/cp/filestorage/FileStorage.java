package com.mikatama.cp.filestorage;

import java.nio.file.Path;
import java.util.stream.Stream;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface FileStorage {

	void store(MultipartFile file, String pathLocation);

	Resource loadFile(String filename, String pathLocation);

	void deleteAll(String pathLocation);

	void init(String pathLocation);

	Stream<Path> loadFiles(String pathLocation);

}
