.class public final Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/common/utils/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field private final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<[I",
            "Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    .line 49
    iput-object p1, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    return-object v0
.end method
