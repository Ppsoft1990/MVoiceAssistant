.class Lvg$a;
.super Ljava/lang/Object;
.source "BannerImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lvg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lvg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvg;-><init>(Lvg$1;)V

    sput-object v0, Lvg$a;->a:Lvg;

    return-void
.end method
