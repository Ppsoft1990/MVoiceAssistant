.class abstract Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$MyIServiceConnection;
.super Landroid/app/IServiceConnection$Stub;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MyIServiceConnection"
.end annotation


# instance fields
.field protected final mInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method private constructor <init>(Landroid/content/pm/ServiceInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 1632
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 1633
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$MyIServiceConnection;->mInfo:Landroid/content/pm/ServiceInfo;

    .line 1634
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/ServiceInfo;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/pm/ServiceInfo;
    .param p2, "x1"    # Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;

    .prologue
    .line 1629
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$MyIServiceConnection;-><init>(Landroid/content/pm/ServiceInfo;)V

    return-void
.end method
