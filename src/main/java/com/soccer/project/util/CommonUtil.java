package com.soccer.project.util;

import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class CommonUtil {
	public String getUniqueSequence() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-","");
	}

}
