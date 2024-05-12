function BER_FEC = DeFEC(LLR_vector,V1_bits,U2_bits,ldpcdecoder);
first_line = LLR_vector(1,:);
rest = LLR_vector(2:end,:);
replace_LLR = [reshape(rest,[],1);first_line'];

Rx_post_FEC = ldpcdecoder(replace_LLR);
Rx_post_FEC = Rx_post_FEC';
Tx_pre_FEC = [V1_bits,U2_bits];
BER_FEC = sum(Rx_post_FEC ~= Tx_pre_FEC)/length(Tx_pre_FEC);

end