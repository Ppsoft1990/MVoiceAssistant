.class public abstract Lph;
.super Ljava/lang/Object;
.source "AbstractPermissionInterceptor.java"

# interfaces
.implements Lpi;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "AbstractPermissionInterceptor"

    iput-object v0, p0, Lph;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "AbstractPermissionInterceptor"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lph;->d()V

    .line 18
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "AbstractPermissionInterceptor"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lph;->e()V

    .line 24
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method
