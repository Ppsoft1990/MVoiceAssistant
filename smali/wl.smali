.class public interface abstract Lwl;
.super Ljava/lang/Object;
.source "OperationCode.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lwl;->a:[Ljava/lang/String;

    .line 513
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "FD03001"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "FD03002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "FD03003"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "FD03004"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "FT62009"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "FD64001"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "FD64002"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "FD64003"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "FD65001"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "FD65002"

    aput-object v2, v0, v1

    sput-object v0, Lwl;->b:[Ljava/lang/String;

    return-void
.end method
