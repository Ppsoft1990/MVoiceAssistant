.class public Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;
.super Ljava/lang/Object;
.source "SmartHomeScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartHomeScanHelper"

.field private static mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeEntryScan:Z

.field private mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

.field private mListener:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    .line 38
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    return-object v0
.end method


# virtual methods
.method public addAllDevices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    if-eqz p1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 88
    .local v0, "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_0
    return-void
.end method

.method public addDevices(Lcom/iflytek/viafly/smarthome/base/DeviceItem;)V
    .locals 1
    .param p1, "deviceItem"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public getDeviceInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getHomeEntryScanFlag()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeEntryScan:Z

    return v0
.end method

.method public getScanListener()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mListener:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    return-object v0
.end method

.method public getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    return-object v0
.end method

.method public isScanViewHasCreate()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJdLoginSuccess()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->onJdLoginSuccess()V

    .line 120
    :cond_0
    return-void
.end method

.method public onMideaLoginSuccess()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeScanView:Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->onMideaLoginSuccess()V

    .line 114
    :cond_0
    return-void
.end method

.method public setHomeEntryScanFlag(Z)V
    .locals 0
    .param p1, "homeEntryScan"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mHomeEntryScan:Z

    .line 100
    return-void
.end method

.method public setScanListener(Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mListener:Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;

    .line 65
    return-void
.end method

.method public startScan()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 57
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/iflytek/viafly/HomeRootView;->addView(Landroid/view/View;II)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->mDeviceItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->startScan()V

    .line 61
    return-void
.end method
