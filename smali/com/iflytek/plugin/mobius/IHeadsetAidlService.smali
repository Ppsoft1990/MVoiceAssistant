.class public Lcom/iflytek/plugin/mobius/IHeadsetAidlService;
.super Landroid/app/Service;
.source "IHeadsetAidlService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IHeadsetAidlService"


# instance fields
.field private mBinder:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlService;->mBinder:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;

    .line 38
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlService;->mBinder:Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;

    return-object v0
.end method
