theory Fixture imports Main begin
lemma retained [simp, intro]: "True" by simp
context fixes x :: nat begin
lemma excluded: "x = x" by simp
end
lemma retained_block: "True"
proof -
 have step: "True" by simp
 show ?thesis using step .
qed
end
