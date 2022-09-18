#pragma once
#include<memory>

class QueueP {
public:
	QueueP() = default;
	QueueP(const QueueP& copy) = default;
	QueueP& operator=(const QueueP& right);
	~QueueP();
	void push(const int& elem);
	void pop();
	const int& top() const;
	bool isEmpty() const;
private:
	class Node {
	public:
		Node() = default;
		Node(const int& elem);
		Node(const int& elem, std::unique_ptr<Node>& next);
		~Node() = default;
		int value;
		std::unique_ptr<Node> next_node;

	};
	std::unique_ptr<Node> head;
};

