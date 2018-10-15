.class final Ldz$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:D

.field b:D

.field c:D


# direct methods
.method private constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldz$c;->a:D

    iput-wide p3, p0, Ldz$c;->b:D

    iput-wide p5, p0, Ldz$c;->c:D

    return-void
.end method

.method synthetic constructor <init>(DDDLea;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Ldz$c;-><init>(DDD)V

    return-void
.end method
