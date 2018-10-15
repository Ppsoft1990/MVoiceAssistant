.class Lbcz$1;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcz;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcz;


# direct methods
.method constructor <init>(Lbcz;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lbcz$1;->a:Lbcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lbcz$1;->a:Lbcz;

    iget-object v0, v0, Lbcz;->d:Lbdd;

    iget-object v1, p0, Lbcz$1;->a:Lbcz;

    iget-object v1, v1, Lbcz;->a:Ljava/lang/String;

    iget-object v2, p0, Lbcz$1;->a:Lbcz;

    iget-object v2, v2, Lbcz;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lbdd;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    .line 221
    return-void
.end method
