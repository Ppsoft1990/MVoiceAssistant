.class public Lcom/iflytek/viafly/contacts/ContactPluginAbility;
.super Ljava/lang/Object;
.source "ContactPluginAbility.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterPlugin(Landroid/content/Context;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 24
    return-void
.end method

.method public getBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getInstance()Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "contacts"

    return-object v0
.end method

.method public getResultFilter()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/iflytek/viafly/contacts/ContactPluginAbility;->getFocus()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "telephone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lzx;

    invoke-direct {v0}, Lzx;-><init>()V

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/contacts/ContactPluginAbility;->getFocus()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Laoo;

    invoke-direct {v0}, Laoo;-><init>()V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/contacts/ContactPluginAbility;->getFocus()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Laav;

    invoke-direct {v0}, Laav;-><init>()V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
