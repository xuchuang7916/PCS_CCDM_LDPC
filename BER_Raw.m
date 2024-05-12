function BER_Raw = BER_Raw(hard_decision_metric,encodedData)
    first_line = hard_decision_metric(1,:);
    rest = hard_decision_metric(2:end,:);
    replace = [reshape(rest,[],1);first_line'];
    BER_Raw = sum(replace ~= encodedData)/length(encodedData); % used to be a bug, one is 1xN one is Nx1

end
