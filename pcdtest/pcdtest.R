# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Tests of cross-section dependence for panel models Use pcdtest (plm) With (In) R Software
# Pesaran's CD or Breusch–Pagan's LM (local or global) tests for cross sectional dependence in panel models Use pcdtest (plm) With (In) R Software
install.packages("plm")
library("plm")
pcdtest = read.csv("https://raw.githubusercontent.com/timbulwidodostp/pcdtest/main/pcdtest/pcdtest.csv",sep = ";")
# Estimation
# Tests of cross-section dependence for panel models Use pcdtest (plm) With (In) R Software
# Pesaran's CD or Breusch–Pagan's LM (local or global) tests for cross sectional dependence in panel models Use pcdtest (plm) With (In) R Software
## test on heterogeneous model (separate time series regressions)
pcdtest(inv ~ value + capital, data=pcdtest, index = c("firm","year"))
## test on two-way fixed effects homogeneous model
pcdtest(inv ~ value + capital, data=pcdtest, model="within", effect="twoways", , index = c("firm","year"))
## test on model object
pcdtest <- plm(inv ~ value + capital, data=pcdtest, index = c("firm","year"))
pcdtest(pcdtest)
## scaled LM test
pcdtest(pcdtest,test="sclm")
# Tests of cross-section dependence for panel models Use pcdtest (plm) With (In) R Software
# Pesaran's CD or Breusch–Pagan's LM (local or global) tests for cross sectional dependence in panel models Use pcdtest (plm) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished