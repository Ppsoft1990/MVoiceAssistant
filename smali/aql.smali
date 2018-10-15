.class public Laql;
.super Ljava/lang/Object;
.source "ProcessRegistImpl.java"

# interfaces
.implements Lcom/iflytek/yd/base/IProcessRegist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laql$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/yd/base/ProcessListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laql;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Laql$1;)V
    .locals 0
    .param p1, "x0"    # Laql$1;

    .prologue
    .line 14
    invoke-direct {p0}, Laql;-><init>()V

    return-void
.end method

.method public static a()Laql;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Laql$a;->a:Laql;

    return-object v0
.end method


# virtual methods
.method public addProcessListener(Lcom/iflytek/yd/base/ProcessListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/iflytek/yd/base/ProcessListener;

    .prologue
    .line 34
    iget-object v0, p0, Laql;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Laql;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/base/ProcessListener;

    .line 48
    .local v0, "listener":Lcom/iflytek/yd/base/ProcessListener;
    invoke-interface {v0}, Lcom/iflytek/yd/base/ProcessListener;->onProcessRestart()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string/jumbo v1, "ProcessRegistImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "askForProcessRestart, listener is not ok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    .line 55
    .end local v0    # "listener":Lcom/iflytek/yd/base/ProcessListener;
    :goto_0
    return v1

    .line 54
    :cond_1
    const-string/jumbo v1, "ProcessRegistImpl"

    const-string/jumbo v2, "askForProcessRestart, all listener is ok"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeProcessListener(Lcom/iflytek/yd/base/ProcessListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/iflytek/yd/base/ProcessListener;

    .prologue
    .line 39
    iget-object v0, p0, Laql;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
