.class Ltd$4;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Lol;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd;


# direct methods
.method constructor <init>(Ltd;)V
    .locals 0
    .param p1, "this$0"    # Ltd;

    .prologue
    .line 525
    iput-object p1, p0, Ltd$4;->a:Ltd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 529
    const-string/jumbo v0, "ApplicationLoader"

    const-string/jumbo v1, "onInit finish"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Ltd$4;->a:Ltd;

    invoke-static {v0}, Ltd;->a(Ltd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvs;->a(Landroid/content/Context;)Lvs;

    move-result-object v0

    invoke-virtual {v0}, Lvs;->a()V

    .line 531
    return-void
.end method
