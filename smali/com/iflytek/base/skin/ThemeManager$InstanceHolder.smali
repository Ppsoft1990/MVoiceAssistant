.class final Lcom/iflytek/base/skin/ThemeManager$InstanceHolder;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/iflytek/base/skin/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/iflytek/base/skin/ThemeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/base/skin/ThemeManager;-><init>(Lcom/iflytek/base/skin/ThemeManager$1;)V

    sput-object v0, Lcom/iflytek/base/skin/ThemeManager$InstanceHolder;->instance:Lcom/iflytek/base/skin/ThemeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
