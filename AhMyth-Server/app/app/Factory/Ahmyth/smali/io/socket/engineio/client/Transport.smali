.class public abstract Lio/socket/engineio/client/Transport;
.super Lio/socket/emitter/Emitter;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/Transport$Options;,
        Lio/socket/engineio/client/Transport$ReadyState;
    }
.end annotation


# static fields
.field public static final EVENT_CLOSE:Ljava/lang/String; = "close"

.field public static final EVENT_DRAIN:Ljava/lang/String; = "drain"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_OPEN:Ljava/lang/String; = "open"

.field public static final EVENT_PACKET:Ljava/lang/String; = "packet"

.field public static final EVENT_REQUEST_HEADERS:Ljava/lang/String; = "requestHeaders"

.field public static final EVENT_RESPONSE_HEADERS:Ljava/lang/String; = "responseHeaders"


# instance fields
.field protected hostname:Ljava/lang/String;

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public name:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected port:I

.field protected proxy:Ljava/net/Proxy;

.field protected proxyLogin:Ljava/lang/String;

.field protected proxyPassword:Ljava/lang/String;

.field public query:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected readyState:Lio/socket/engineio/client/Transport$ReadyState;

.field protected secure:Z

.field protected socket:Lio/socket/engineio/client/Socket;

.field protected sslContext:Ljavax/net/ssl/SSLContext;

.field protected timestampParam:Ljava/lang/String;

.field protected timestampRequests:Z

.field public writable:Z


# direct methods
.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lio/socket/emitter/Emitter;-><init>()V

    .line 54
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->path:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    .line 56
    iget v0, p1, Lio/socket/engineio/client/Transport$Options;->port:I

    iput v0, p0, Lio/socket/engineio/client/Transport;->port:I

    .line 57
    iget-boolean v0, p1, Lio/socket/engineio/client/Transport$Options;->secure:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->secure:Z

    .line 58
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->query:Ljava/util/Map;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->query:Ljava/util/Map;

    .line 59
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->timestampParam:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->timestampParam:Ljava/lang/String;

    .line 60
    iget-boolean v0, p1, Lio/socket/engineio/client/Transport$Options;->timestampRequests:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->timestampRequests:Z

    .line 61
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 62
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->socket:Lio/socket/engineio/client/Socket;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->socket:Lio/socket/engineio/client/Socket;

    .line 63
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 64
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->proxy:Ljava/net/Proxy;

    .line 65
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->proxyLogin:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->proxyLogin:Ljava/lang/String;

    .line 66
    iget-object p1, p1, Lio/socket/engineio/client/Transport$Options;->proxyPassword:Ljava/lang/String;

    iput-object p1, p0, Lio/socket/engineio/client/Transport;->proxyPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()Lio/socket/engineio/client/Transport;
    .locals 1

    .line 90
    new-instance v0, Lio/socket/engineio/client/Transport$2;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Transport$2;-><init>(Lio/socket/engineio/client/Transport;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected abstract doClose()V
.end method

.method protected abstract doOpen()V
.end method

.method protected onClose()V
    .locals 2

    .line 138
    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "close"

    .line 139
    invoke-virtual {p0, v1, v0}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method protected onData(Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-static {p1}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;)Lio/socket/engineio/parser/Packet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->onPacket(Lio/socket/engineio/parser/Packet;)V

    return-void
.end method

.method protected onData([B)V
    .locals 0

    .line 130
    invoke-static {p1}, Lio/socket/engineio/parser/Parser;->decodePacket([B)Lio/socket/engineio/parser/Packet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->onPacket(Lio/socket/engineio/parser/Packet;)V

    return-void
.end method

.method protected onError(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 1

    .line 71
    new-instance v0, Lio/socket/engineio/client/EngineIOException;

    invoke-direct {v0, p1, p2}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const-string p2, "error"

    .line 72
    invoke-virtual {p0, p2, p1}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-object p0
.end method

.method protected onOpen()V
    .locals 2

    .line 120
    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->writable:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "open"

    .line 122
    invoke-virtual {p0, v1, v0}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method protected onPacket(Lio/socket/engineio/parser/Packet;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "packet"

    .line 134
    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Transport;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method public open()Lio/socket/engineio/client/Transport;
    .locals 1

    .line 77
    new-instance v0, Lio/socket/engineio/client/Transport$1;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Transport$1;-><init>(Lio/socket/engineio/client/Transport;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public send([Lio/socket/engineio/parser/Packet;)V
    .locals 1

    .line 103
    new-instance v0, Lio/socket/engineio/client/Transport$3;

    invoke-direct {v0, p0, p1}, Lio/socket/engineio/client/Transport$3;-><init>(Lio/socket/engineio/client/Transport;[Lio/socket/engineio/parser/Packet;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract write([Lio/socket/engineio/parser/Packet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation
.end method
