.class Layt$a;
.super Ljava/lang/Object;
.source "SourceLanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layt$1;)V
    .locals 0
    .param p1, "x0"    # Layt$1;

    .prologue
    .line 60
    invoke-direct {p0}, Layt$a;-><init>()V

    return-void
.end method
