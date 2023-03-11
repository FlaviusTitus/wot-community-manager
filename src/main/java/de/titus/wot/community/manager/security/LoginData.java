package de.titus.wot.community.manager.security;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import de.titus.wot.community.manager.database.entities.Member;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * Instantiates a new login response.
 */
@Data
@EqualsAndHashCode
@ToString
@JsonIgnoreProperties(ignoreUnknown = true)
public class LoginData {

	@JsonIgnore
	public static final String SESSION_KEY = "login-data";

	/** The acces token. */
	private String accesToken;

	/** The expires at. */
	private long expireAt;

	/** The member. */
	private Member member;

	private AccessRights accessRights;

}
