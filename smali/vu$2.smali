.class Lvu$2;
.super Ljava/lang/Object;
.source "BlcVersionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvu;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lvu;


# direct methods
.method constructor <init>(Lvu;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lvu;

    .prologue
    .line 362
    iput-object p1, p0, Lvu$2;->b:Lvu;

    iput-object p2, p0, Lvu$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Lbam;

    iget-object v1, p0, Lvu$2;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbam;-><init>(Landroid/content/Context;I)V

    .line 367
    .local v0, "versionCheckManager":Lbam;
    invoke-virtual {v0}, Lbam;->a()V

    .line 368
    return-void
.end method
