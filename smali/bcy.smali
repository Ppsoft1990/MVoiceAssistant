.class final Lbcy;
.super Ljava/lang/Object;
.source "ImageLoadingInfo.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Landroid/widget/ImageView;

.field final d:Lbde;

.field final e:Lbcu;

.field final f:Lbdd;

.field final g:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Lbde;Ljava/lang/String;Lbcu;Lbdd;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "targetSize"    # Lbde;
    .param p4, "memoryCacheKey"    # Ljava/lang/String;
    .param p5, "options"    # Lbcu;
    .param p6, "listener"    # Lbdd;
    .param p7, "loadFromUriLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbcy;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lbcy;->c:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lbcy;->d:Lbde;

    .line 49
    iput-object p5, p0, Lbcy;->e:Lbcu;

    .line 50
    iput-object p6, p0, Lbcy;->f:Lbdd;

    .line 51
    iput-object p7, p0, Lbcy;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    iput-object p4, p0, Lbcy;->b:Ljava/lang/String;

    .line 53
    return-void
.end method
