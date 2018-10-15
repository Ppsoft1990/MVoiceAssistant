.class public final Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/common/utils/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final array:Landroid/content/res/TypedArray;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/iflytek/greenplug/common/utils/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    .line 60
    return-void
.end method
