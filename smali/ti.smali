.class public Lti;
.super Ljava/lang/Object;
.source "UserStateEvent.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "UserStateEvent"

    iput-object v0, p0, Lti;->a:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lti;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lti;->b:Ljava/lang/String;

    return-object v0
.end method
