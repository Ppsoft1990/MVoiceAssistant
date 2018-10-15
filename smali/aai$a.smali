.class Laai$a;
.super Ljava/lang/Object;
.source "PhoneTypeMarkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Laai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Laai;

    invoke-direct {v0}, Laai;-><init>()V

    sput-object v0, Laai$a;->a:Laai;

    return-void
.end method
