.class public final Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;
.super Ljava/lang/Object;
.source "ViaFlyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin$SingletonHolder;
    }
.end annotation


# instance fields
.field private mCommunication:Lcom/iflytek/framework/plugin/sdk/PluginCommunication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin$SingletonHolder;->mInstance:Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;

    return-object v0
.end method


# virtual methods
.method public getCommunication()Lcom/iflytek/framework/plugin/sdk/PluginCommunication;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->mCommunication:Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    return-object v0
.end method

.method public registCommunication(Lcom/iflytek/framework/plugin/sdk/PluginCommunication;)V
    .locals 0
    .param p1, "communication"    # Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/iflytek/framework/plugin/sdk/ViaFlyPlugin;->mCommunication:Lcom/iflytek/framework/plugin/sdk/PluginCommunication;

    .line 22
    return-void
.end method
