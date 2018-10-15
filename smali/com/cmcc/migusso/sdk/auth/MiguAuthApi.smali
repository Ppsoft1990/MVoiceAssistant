.class public interface abstract Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
.super Ljava/lang/Object;
.source "MiguAuthApi.java"


# virtual methods
.method public abstract actionUemThirdLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
.end method

.method public abstract bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract bindNewPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract bindPhoneForService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract changeAccount(Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract changeNickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract checkAbcAccountAndPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract cleanSSO(Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract doAbcAccountUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract enableStoreLog(Landroid/content/Context;Z)V
.end method

.method public abstract finishAllMiguActivitys()V
.end method

.method public abstract finishTopMiguActivity()V
.end method

.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;)V
.end method

.method public abstract getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getAccountList(Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getSmsCodeForBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getStoreFileDir(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getVisitorId(Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract getVoiceValidCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract isMiguAccount(Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract notifyLoginResult(Lorg/json/JSONObject;)V
.end method

.method public abstract qrcodeScanLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract qrcodeScaned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract queryAllUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract queryThirdBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract queryUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract requestServiceToSaveRespDate()V
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract securityVerifyByImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract securityVerifyByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract setAppInfoQQ(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppInfoWechat(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppInfoWeibo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppid(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setBackArrow(Z)V
.end method

.method public abstract setConnectUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setFindPwdCallBack(Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
.end method

.method public abstract setFinishCallBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V
.end method

.method public abstract setLogLevel(I)V
.end method

.method public abstract setLoginAccoutType(I)V
.end method

.method public abstract setLoginCancelEnable(Z)V
.end method

.method public abstract setLoginPageCancelBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogoutCallBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V
.end method

.method public abstract setPackageName(Ljava/lang/String;)V
.end method

.method public abstract setThemeColor(I)V
.end method

.method public abstract setThirdAuthn(ILjava/lang/String;ZLcom/cmcc/migusso/sdk/common/ThirdEventListener;)V
.end method

.method public abstract setThirdLoginConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setThirdLoginConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setTokenProcess(Lcom/cmcc/migusso/sdk/common/TokenProcess;)V
.end method

.method public abstract setUpgradeCallBack(Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
.end method

.method public abstract setUserProtocol(Ljava/lang/String;)V
.end method

.method public abstract setVisitorCallBack(Lcom/cmcc/migusso/sdk/common/JSONCallBack;)V
.end method

.method public abstract showBindAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showSmsRemindDialog(Landroid/content/Context;)V
.end method

.method public abstract showThirdPartAppNotInstallToast(Landroid/content/Context;Ljava/lang/String;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showUpgradeDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showUserProtocol(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract startBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/JSONCallBack;)V
.end method

.method public abstract startScanQRCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/QrResultListener;)V
.end method

.method public abstract startThirdpartyLogin(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ILcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract thirdPartyBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract unBindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract unRegisterCallBacks()V
.end method

.method public abstract upLoadAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract upgradeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method

.method public abstract verifyOldPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
.end method
