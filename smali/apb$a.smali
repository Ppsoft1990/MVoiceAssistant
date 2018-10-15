.class Lapb$a;
.super Ljava/lang/Object;
.source "SmsGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lapb;


# direct methods
.method private constructor <init>(Lapb;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lapb$a;->b:Lapb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapb;Lapb$1;)V
    .locals 0
    .param p1, "x0"    # Lapb;
    .param p2, "x1"    # Lapb$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lapb$a;-><init>(Lapb;)V

    return-void
.end method
