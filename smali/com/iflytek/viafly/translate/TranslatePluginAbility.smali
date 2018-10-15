.class public Lcom/iflytek/viafly/translate/TranslatePluginAbility;
.super Ljava/lang/Object;
.source "TranslatePluginAbility.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;


# instance fields
.field private mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterPlugin(Landroid/content/Context;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 22
    return-void
.end method

.method public getBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslatePluginAbility;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    invoke-direct {v0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/TranslatePluginAbility;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslatePluginAbility;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "translation"

    return-object v0
.end method

.method public getResultFilter()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Laxq;

    invoke-direct {v0}, Laxq;-><init>()V

    return-object v0
.end method
