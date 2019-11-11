smaple_tree <- pbtree(1500)

random_sample <- sample( x = c(0,1), size = 1500, replace = TRUE, prob = c(.95, 0.05))
plotBranchbyTrait(smaple_tree,smaple_tree$tip.ann,method="edges", show.tip.label=F, palette = colorRampPalette(c("black","red")), type="fan", legend= 0, edge.width = .4)

smaple_tree$tip.disc <- as.numeric(rTraitDisc(smaple_tree, states = c(0, 1), freq = c(.02, .98)))
plotBranchbyTrait(smaple_tree,as.numeric(smaple_tree$tip.disc),method="edges", show.tip.label=F, palette = colorRampPalette(c("red","black")), type="fan", legend= 0, edge.width = .4)