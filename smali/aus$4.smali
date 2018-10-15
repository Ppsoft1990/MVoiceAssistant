.class Laus$4;
.super Ljava/lang/Object;
.source "CommonMediaHandler.java"

# interfaces
.implements Lod$a;


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
    .line 631
    iput-object p1, p0, Laus$4;->a:Laus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Laus$4;->a:Laus;

    invoke-static {v0}, Laus;->a(Laus;)V

    .line 641
    iget-object v0, p0, Laus$4;->a:Laus;

    invoke-static {v0}, Laus;->i(Laus;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lod;->a(Lod$a;)V

    .line 642
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Laus$4;->a:Laus;

    invoke-static {v0}, Laus;->a(Laus;)V

    .line 636
    return-void
.end method
