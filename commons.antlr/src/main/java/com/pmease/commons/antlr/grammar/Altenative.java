package com.pmease.commons.antlr.grammar;

import java.util.List;

public class Altenative extends GrammarMember {

	private static final long serialVersionUID = 1L;

	private final String label;
	
	private final List<Element> elements;
	
	public Altenative(Grammar grammar, String label, List<Element> elements) {
		super(grammar);
		this.label = label;
		this.elements = elements;
	}

	public String getLabel() {
		return label;
	}

	public List<Element> getElements() {
		return elements;
	}
	
}
