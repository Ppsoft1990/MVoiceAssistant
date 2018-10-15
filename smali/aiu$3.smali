.class Laiu$3;
.super Ljava/lang/Object;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laiu;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laiu;


# direct methods
.method constructor <init>(Laiu;)V
    .locals 0
    .param p1, "this$0"    # Laiu;

    .prologue
    .line 259
    iput-object p1, p0, Laiu$3;->a:Laiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Laiu$3;->a:Laiu;

    invoke-static {v0}, Laiu;->d(Laiu;)Larc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Laiu$3;->a:Laiu;

    invoke-static {v0}, Laiu;->d(Laiu;)Larc;

    move-result-object v0

    iget-object v1, p0, Laiu$3;->a:Laiu;

    invoke-virtual {v0, v1}, Larc;->b(Laqy;)Z

    .line 265
    :cond_0
    return-void
.end method
