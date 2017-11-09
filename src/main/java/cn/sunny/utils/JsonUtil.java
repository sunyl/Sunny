package cn.sunny.utils;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtil {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(JsonUtil.class);

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

	/**
	 * 将 POJO 转换为 JSON
	 */
	public static <T> String toJson(T obj) {
		String json;

		try {
			json = OBJECT_MAPPER.writeValueAsString(obj);
		} catch (JsonProcessingException e) {
			LOGGER.error("convert POJO to JSON failure", e);
			throw new RuntimeException(e);
		}

		return json;
	}

	/**
	 * 将 JSON 转换为 POJO
	 */
	public static <T> T fromJson(String json, Class<T> type) {
		T pojo;
		try {
			pojo = OBJECT_MAPPER.readValue(json, type);
		} catch (IOException e) {
			LOGGER.error("convert JSON to POJO failure", e);
			throw new RuntimeException(e);
		}
		return pojo;
	}
}
