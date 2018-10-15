.class Li$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Li;


# direct methods
.method constructor <init>(Li;II)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Li$2;->c:Li;

    iput p2, p0, Li$2;->a:I

    iput p3, p0, Li$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Li$2;->c:Li;

    iget-object v1, p0, Li$2;->c:Li;

    iget-object v1, v1, Li;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Li$2;->a:I

    iget v4, p0, Li$2;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Li;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 515
    return-void
.end method
