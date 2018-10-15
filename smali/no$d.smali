.class Lno$d;
.super Ljava/lang/Object;
.source "DownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field static a:Lno;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lno;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno;-><init>(Lno$1;)V

    sput-object v0, Lno$d;->a:Lno;

    return-void
.end method
