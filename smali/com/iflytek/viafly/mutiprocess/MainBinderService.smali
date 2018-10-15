.class public final Lcom/iflytek/viafly/mutiprocess/MainBinderService;
.super Landroid/app/Service;
.source "MainBinderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mutiprocess/MainBinderService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    new-instance v0, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mutiprocess/MainBinderService$a;-><init>(Lcom/iflytek/viafly/mutiprocess/MainBinderService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    iput-object p0, p0, Lcom/iflytek/viafly/mutiprocess/MainBinderService;->a:Landroid/content/Context;

    .line 31
    return-void
.end method
