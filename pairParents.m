function [potentialPairs] = pairParents(femalesIdx, femalesFitness, malesIdx, malesFitness)
	potentialPairs = [];
	for i=1:length(femalesIdx)
		numMates = poissrnd(10*femalesFitness(i))+1;
		for j = 1:numMates
			chosenMaleIdx = myID_parent(malesFitness);
			husbandIdx = malesIdx(chosenMaleIdx);
			potentialPairs = [potentialPairs, [femalesIdx(i); husbandIdx]];		
		end
	end
end