.class public Lbw;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbw$d;,
        Lbw$b;,
        Lbw$a;,
        Lbw$e;,
        Lbw$c;
    }
.end annotation


# static fields
.field private static final a:Lbw$c;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 507
    new-instance v0, Lbw$d;

    invoke-direct {v0}, Lbw$d;-><init>()V

    sput-object v0, Lbw;->a:Lbw$c;

    .line 515
    :goto_0
    return-void

    .line 508
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 509
    new-instance v0, Lbw$b;

    invoke-direct {v0}, Lbw$b;-><init>()V

    sput-object v0, Lbw;->a:Lbw$c;

    goto :goto_0

    .line 510
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 511
    new-instance v0, Lbw$a;

    invoke-direct {v0}, Lbw$a;-><init>()V

    sput-object v0, Lbw;->a:Lbw$c;

    goto :goto_0

    .line 513
    :cond_2
    new-instance v0, Lbw$e;

    invoke-direct {v0}, Lbw$e;-><init>()V

    sput-object v0, Lbw;->a:Lbw$c;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lbw;->b:Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public static a()Lbw;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Lbw;

    sget-object v1, Lbw;->a:Lbw$c;

    invoke-interface {v1}, Lbw$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lbw;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "itemCount"    # I

    .prologue
    .line 734
    sget-object v0, Lbw;->a:Lbw$c;

    iget-object v1, p0, Lbw;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lbw$c;->b(Ljava/lang/Object;I)V

    .line 735
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "scrollable"    # Z

    .prologue
    .line 714
    sget-object v0, Lbw;->a:Lbw$c;

    iget-object v1, p0, Lbw;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lbw$c;->a(Ljava/lang/Object;Z)V

    .line 715
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1, "fromIndex"    # I

    .prologue
    .line 780
    sget-object v0, Lbw;->a:Lbw$c;

    iget-object v1, p0, Lbw;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lbw$c;->a(Ljava/lang/Object;I)V

    .line 781
    return-void
.end method

.method public c(I)V
    .locals 2
    .param p1, "toIndex"    # I

    .prologue
    .line 800
    sget-object v0, Lbw;->a:Lbw$c;

    iget-object v1, p0, Lbw;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lbw$c;->c(Ljava/lang/Object;I)V

    .line 801
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1025
    if-ne p0, p1, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return v1

    .line 1028
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1029
    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1032
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1034
    check-cast v0, Lbw;

    .line 1035
    .local v0, "other":Lbw;
    iget-object v3, p0, Lbw;->b:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 1036
    iget-object v3, v0, Lbw;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    .line 1037
    goto :goto_0

    .line 1039
    :cond_4
    iget-object v3, p0, Lbw;->b:Ljava/lang/Object;

    iget-object v4, v0, Lbw;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1040
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lbw;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbw;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
