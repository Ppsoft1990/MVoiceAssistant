.class public Lbdj$a;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput v0, p0, Lbdj$a;->a:I

    .line 209
    iput-boolean v0, p0, Lbdj$a;->b:Z

    .line 210
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "rotation"    # I
    .param p2, "flipHorizontal"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lbdj$a;->a:I

    .line 214
    iput-boolean p2, p0, Lbdj$a;->b:Z

    .line 215
    return-void
.end method
