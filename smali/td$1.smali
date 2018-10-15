.class Ltd$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ltd;


# direct methods
.method constructor <init>(Ltd;Z)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 282
    iput-object p1, p0, Ltd$1;->b:Ltd;

    iput-boolean p2, p0, Ltd$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-boolean v0, p0, Ltd$1;->a:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    iget-object v1, p0, Ltd$1;->b:Ltd;

    invoke-static {v1}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhp;->c(Landroid/content/Context;)V

    .line 288
    :cond_0
    return-void
.end method
