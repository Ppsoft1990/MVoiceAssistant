.class Laus$2;
.super Ljava/lang/Object;
.source "CommonMediaHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laus;->f()V
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
    .line 365
    iput-object p1, p0, Laus$2;->a:Laus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Lavb;->a:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Laus$2;->a:Laus;

    invoke-static {v0}, Laus;->b(Laus;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawk;->a(Landroid/content/Context;)V

    .line 371
    const/4 v0, 0x0

    sput-boolean v0, Lavb;->a:Z

    .line 373
    :cond_0
    return-void
.end method
