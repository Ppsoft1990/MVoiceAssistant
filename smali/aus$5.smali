.class Laus$5;
.super Ljava/lang/Object;
.source "CommonMediaHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laus;


# direct methods
.method constructor <init>(Laus;)V
    .locals 0
    .param p1, "this$0"    # Laus;

    .prologue
    .line 646
    iput-object p1, p0, Laus$5;->a:Laus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 650
    iget-object v0, p0, Laus$5;->a:Laus;

    invoke-static {v0}, Laus;->j(Laus;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Laus$5;->a:Laus;

    iget-object v3, p0, Laus$5;->a:Laus;

    invoke-static {v3}, Laus;->k(Laus;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v3

    invoke-static {v2, v3}, Laus;->a(Laus;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laus$5;->a:Laus;

    iget-object v3, v3, Laus;->d:Lod$a;

    invoke-static {v0, v1, v2, v3}, Lawd;->a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V

    .line 651
    return-void
.end method
