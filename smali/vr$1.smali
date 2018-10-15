.class Lvr$1;
.super Ljava/util/TimerTask;
.source "BlcLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvr;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvr;


# direct methods
.method constructor <init>(Lvr;)V
    .locals 0
    .param p1, "this$0"    # Lvr;

    .prologue
    .line 225
    iput-object p1, p0, Lvr$1;->a:Lvr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lvr;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    invoke-virtual {v0}, Lvk;->j()V

    .line 229
    return-void
.end method
