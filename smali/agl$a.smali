.class Lagl$a;
.super Ljava/lang/Object;
.source "GrayPermManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lagl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lagl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagl;-><init>(Lagl$1;)V

    sput-object v0, Lagl$a;->a:Lagl;

    return-void
.end method
