.class public Ltw;
.super Ljava/lang/Object;
.source "ADDataUtils.java"


# direct methods
.method public static a(Lcom/migu/voiceads/MIGUNativeAdDataRef;)Z
    .locals 1
    .param p0, "result"    # Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .prologue
    .line 168
    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/migu/voiceads/MIGUNativeAdDataRef;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
