.class public interface abstract Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;
.super Ljava/lang/Object;
.source "IAdaptAbility.java"

# interfaces
.implements Lcom/iflytek/yd/plugin/IPluginAbility;


# virtual methods
.method public abstract getCallAdaptation(Landroid/content/Context;)Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
.end method

.method public abstract getMmsAdaptation(Landroid/content/Context;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
.end method

.method public abstract getSimInfoAdaptation(Landroid/content/Context;)Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
.end method
