.class Lavm$1;
.super Ljava/lang/Object;
.source "WakeupScheduleManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavm;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lavm;


# direct methods
.method constructor <init>(Lavm;Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lavm;

    .prologue
    .line 96
    iput-object p1, p0, Lavm$1;->d:Lavm;

    iput-object p2, p0, Lavm$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lavm$1;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object p4, p0, Lavm$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lavm$1;->d:Lavm;

    iget-object v1, p0, Lavm$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lavm$1;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v3, p0, Lavm$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lavm;->a(Lavm;Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lavm$1;->d:Lavm;

    invoke-static {v0}, Lavm;->a(Lavm;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lavm$1;->d:Lavm;

    invoke-static {v0}, Lavm;->a(Lavm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lavm$1;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    const-string/jumbo v0, "OK"

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lavm$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
