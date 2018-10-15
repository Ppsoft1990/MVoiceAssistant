.class Laiu$5;
.super Ljava/lang/Object;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laiu;->e(I)V
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
    .line 315
    iput-object p1, p0, Laiu$5;->a:Laiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Laiu$5;->a:Laiu;

    iget-object v1, p0, Laiu$5;->a:Laiu;

    invoke-static {v1}, Laiu;->e(Laiu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiu;->a(Laiu;Ljava/lang/String;)V

    .line 319
    return-void
.end method
