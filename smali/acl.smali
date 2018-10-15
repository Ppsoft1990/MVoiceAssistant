.class public Lacl;
.super Ljava/lang/Object;
.source "MessageEditBridge.java"


# static fields
.field public static a:Z

.field private static b:Lacl;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lade;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a()Lacl;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lacl;->b:Lacl;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lacl;

    invoke-direct {v0}, Lacl;-><init>()V

    sput-object v0, Lacl;->b:Lacl;

    .line 40
    :cond_0
    sget-object v0, Lacl;->b:Lacl;

    return-object v0
.end method


# virtual methods
.method public a(Lade;)V
    .locals 1
    .param p1, "pWidgetSmsInputView"    # Lade;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacl;->c:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method
