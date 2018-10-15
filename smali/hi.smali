.class public Lhi;
.super Ljava/lang/Object;
.source "ContactQueryConstant.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lhi;->a:[Ljava/lang/String;

    .line 17
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "has_phone_number"

    aput-object v1, v0, v3

    sput-object v0, Lhi;->b:[Ljava/lang/String;

    .line 21
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lhi;->c:[Ljava/lang/String;

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v2

    sput-object v0, Lhi;->d:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lhi;->e:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v3

    sput-object v0, Lhi;->f:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "has_phone_number"

    aput-object v1, v0, v2

    sput-object v0, Lhi;->g:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lhi;->h:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lhi;->i:[Ljava/lang/String;

    return-void
.end method
