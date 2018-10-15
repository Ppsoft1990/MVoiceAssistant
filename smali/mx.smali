.class public Lmx;
.super Ljava/lang/Object;
.source "StartType.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "START_FLAG"

    sput-object v0, Lmx;->a:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    sput v0, Lmx;->b:I

    .line 10
    const/4 v0, 0x2

    sput v0, Lmx;->c:I

    return-void
.end method
