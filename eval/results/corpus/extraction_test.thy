theory Extraction imports Main begin
(* lemma bad: "False" by simp (* nested *) *)
lemma good [simp]: "True" by simp
context begin
lemma hidden: "True" by simp
end
locale L = fixes x :: nat begin
lemma hidden2: "x=x" by simp
end
lemma good2: "True" proof - have inside: "True" by simp show ?thesis by simp qed
end
