.class public interface abstract Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/ISougouSDKAbility;
.super Ljava/lang/Object;
.source "ISougouSDKAbility.java"

# interfaces
.implements Lcom/iflytek/yd/plugin/IPluginAbility;


# virtual methods
.method public abstract checkAndDoUpdate()Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getNumberInfoFromLocal(Ljava/lang/String;)Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;
.end method

.method public abstract getNumberInfoFromNet(Ljava/lang/String;)Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;
.end method

.method public abstract getPartLocalNumber()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract sendContactInfo()V
.end method
