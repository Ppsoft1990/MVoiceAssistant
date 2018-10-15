.class public Lbdj$b;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lbde;

.field final b:Lbdj$a;


# direct methods
.method constructor <init>(Lbde;Lbdj$a;)V
    .locals 0
    .param p1, "imageSize"    # Lbde;
    .param p2, "exif"    # Lbdj$a;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lbdj$b;->a:Lbde;

    .line 225
    iput-object p2, p0, Lbdj$b;->b:Lbdj$a;

    .line 226
    return-void
.end method
