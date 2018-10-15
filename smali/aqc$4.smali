.class final Laqc$4;
.super Ljava/lang/Object;
.source "MusicCoverHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqc;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Laqc$4;->a:Landroid/content/Context;

    iput-object p2, p0, Laqc$4;->b:Ljava/lang/String;

    iput-object p3, p0, Laqc$4;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Laqc$4;->a:Landroid/content/Context;

    iget-object v2, p0, Laqc$4;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lbab;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Laqc$4;->c:Landroid/widget/ImageView;

    new-instance v2, Laqc$4$1;

    invoke-direct {v2, p0, v0}, Laqc$4$1;-><init>(Laqc$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 155
    :cond_0
    return-void
.end method
