.class Luk$b;
.super Ljava/lang/Object;
.source "DataEncodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Luk;

.field private b:[S

.field private c:I


# direct methods
.method public constructor <init>(Luk;[SI)V
    .locals 1
    .param p2, "rawData"    # [S
    .param p3, "readSize"    # I

    .prologue
    .line 152
    iput-object p1, p0, Luk$b;->a:Luk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Luk$b;->b:[S

    .line 154
    iput p3, p0, Luk$b;->c:I

    .line 155
    return-void
.end method


# virtual methods
.method public a()[S
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Luk$b;->b:[S

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Luk$b;->c:I

    return v0
.end method
